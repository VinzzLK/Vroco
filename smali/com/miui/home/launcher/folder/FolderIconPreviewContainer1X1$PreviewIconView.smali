.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FolderIconPreviewContainer1X1.kt"

# interfaces
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewIconView"
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private mContext:Landroid/content/Context;

.field private mShortcutInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private progressIconPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->_$_findViewCache:Ljava/util/Map;

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewItemPadding()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    .line 219
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mContext:Landroid/content/Context;

    .line 177
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private final setItemPadding()V
    .locals 1

    .line 208
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewItemPadding()I

    move-result v0

    .line 209
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 214
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public getVisionCenter([I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, p1, v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    aput p0, p1, v0

    :cond_1
    return-void
.end method

.method public getVisionOffset([I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 239
    aput v0, p1, v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p0

    aput p0, p1, v0

    :cond_1
    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 188
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->progressIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 186
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-string v2, "null cannot be cast to non-null type com.miui.home.launcher.progress.ProgressShortcutInfo"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 190
    invoke-static {v1, p1, v0, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 198
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setItemPadding()V

    .line 204
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public final refreshIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mShortcutInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mShortcutInfoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 230
    :goto_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    .line 232
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 234
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->refreshIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method
