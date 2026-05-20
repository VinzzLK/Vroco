.class public final synthetic Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(FFLandroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;->f$0:F

    iget v1, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;->f$1:F

    iget-object p0, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/Window;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->$r8$lambda$MOMWsPHA2hVNWOHI0G7xJ4edTFA(FFLandroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method
