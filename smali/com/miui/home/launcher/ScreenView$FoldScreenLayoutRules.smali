.class public Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;
.super Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FoldScreenLayoutRules"
.end annotation


# instance fields
.field public mEditCellScreenMargin:I

.field public mEditCellScreenTranslationX:I

.field public mEditOtherScreenTranslationX:I

.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;)V
    .locals 1

    .line 2709
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;-><init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V

    .line 2710
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701b0

    .line 2711
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditCellScreenTranslationX:I

    const p2, 0x7f0701b2

    .line 2712
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditOtherScreenTranslationX:I

    const p2, 0x7f0701af

    .line 2713
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditCellScreenMargin:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;Lcom/miui/home/launcher/ScreenView$1;)V
    .locals 0

    .line 2700
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;-><init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateEditLayoutX(III)I
    .locals 1

    .line 2771
    iget v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditOtherScreenTranslationX:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditCellScreenTranslationX:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    .line 2772
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenScaleRatio()F

    move-result v0

    mul-float/2addr p3, v0

    iget p0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditCellScreenMargin:I

    int-to-float p0, p0

    add-float/2addr p3, p0

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    .line 2773
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getLayoutX(I)I
    .locals 3

    .line 2739
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v1, v0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/16 v2, 0x9

    if-ne v2, v1, :cond_1

    .line 2741
    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$1700(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v1}, Lcom/miui/home/launcher/ScreenView;->access$1800(Lcom/miui/home/launcher/ScreenView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v1, v1, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->calculateEditLayoutX(III)I

    move-result p0

    return p0

    :cond_1
    if-nez v1, :cond_2

    .line 2742
    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$1800(Lcom/miui/home/launcher/ScreenView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2744
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    return p0

    .line 2746
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->getLayoutX(I)I

    move-result p0

    return p0
.end method

.method public getScreenSnapX(I)I
    .locals 3

    .line 2719
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v1, v0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/16 v2, 0x9

    if-ne v2, v1, :cond_0

    .line 2720
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$1600(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2721
    iget v0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->mEditCellScreenTranslationX:I

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapDirection()I

    move-result p0

    mul-int/2addr v0, p0

    sub-int/2addr p1, v0

    return p1

    .line 2723
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;->getScreenSnapX(I)I

    move-result p0

    return p0
.end method
