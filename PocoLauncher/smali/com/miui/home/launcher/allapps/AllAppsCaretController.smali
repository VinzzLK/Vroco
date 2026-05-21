.class public Lcom/miui/home/launcher/allapps/AllAppsCaretController;
.super Ljava/lang/Object;
.source "AllAppsCaretController.java"


# instance fields
.field private mCaretAnimator:Landroid/animation/ObjectAnimator;

.field private mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

.field private mThresholdCrossed:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/pageindicators/CaretDrawable;Lcom/miui/home/launcher/Launcher;)V
    .locals 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    .line 43
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    const p1, 0x10c000d

    .line 45
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v3, "caretProgress"

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    .line 50
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public onDragStart()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    return-void
.end method
