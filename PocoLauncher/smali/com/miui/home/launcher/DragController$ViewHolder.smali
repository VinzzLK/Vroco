.class Lcom/miui/home/launcher/DragController$ViewHolder;
.super Landroid/widget/ImageView;
.source "DragController.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private isMiuiWidget:Z

.field private mInfo:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->isMiuiWidget:Z

    return-void
.end method

.method public static create(Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/DragController$ViewHolder;
    .locals 2

    .line 342
    new-instance v0, Lcom/miui/home/launcher/DragController$ViewHolder;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragController$ViewHolder;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iput-object p4, v0, Lcom/miui/home/launcher/DragController$ViewHolder;->mInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 345
    instance-of p0, p4, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz p0, :cond_0

    .line 346
    check-cast p4, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean p0, p4, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    iput-boolean p0, v0, Lcom/miui/home/launcher/DragController$ViewHolder;->isMiuiWidget:Z

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 349
    invoke-virtual {v0, p1, p4}, Lcom/miui/home/launcher/DragController$ViewHolder;->setMeasuredDimensionPub(II)V

    .line 351
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {v0, p2, p3, p1, p0}, Landroid/widget/ImageView;->layout(IIII)V

    return-object v0
.end method


# virtual methods
.method public getVisionCenter([I)V
    .locals 2

    .line 364
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 365
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    aput p0, p1, v0

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->mInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 359
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->isMiuiWidget:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    :cond_0
    const/4 p0, 0x1

    aput v1, p1, p0

    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->mInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-boolean v2, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->isMiuiWidget:Z

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    .line 372
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->isMiuiWidget:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sub-int/2addr v0, v1

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    iget-object v4, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->mInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    mul-int/2addr v1, v4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 374
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->isMiuiWidget:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v3

    :cond_1
    add-int/2addr v2, v1

    add-int/2addr v0, v3

    .line 375
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setMeasuredDimensionPub(II)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method
