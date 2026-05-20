.class Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/IScreenLayoutRules;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneScreenLayoutRules"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 2777
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V
    .locals 0

    .line 2777
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    return-void
.end method


# virtual methods
.method public calculateEditLayoutX(III)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLayoutX(I)I
    .locals 3

    .line 2796
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v2, v1, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    invoke-static {v1}, Lcom/miui/home/launcher/ScreenView;->access$2000(Lcom/miui/home/launcher/ScreenView;)I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 2797
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget-boolean v2, v1, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    if-nez v2, :cond_0

    .line 2798
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getScreenSnapX(I)I
    .locals 4

    .line 2782
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$1600(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2783
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v1, v0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2784
    iget v1, v0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$1900(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v2, v2, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, p0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_0
    const/4 p0, 0x6

    if-ne v1, p0, :cond_1

    .line 2786
    iget p0, v0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v1, v0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v3, v0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v3, v1

    sub-int/2addr p0, v3

    sub-int/2addr v1, v2

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$2000(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    mul-int/2addr v1, v0

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    :goto_0
    sub-int/2addr p1, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x7

    if-ne v1, p0, :cond_2

    .line 2788
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getFixedGapModeStartPoint()I

    move-result p0

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method
