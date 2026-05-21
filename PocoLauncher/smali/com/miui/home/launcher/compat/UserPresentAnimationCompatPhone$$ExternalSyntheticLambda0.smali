.class public final synthetic Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Z

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;IILandroid/view/View;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    iput p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iput-boolean p5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$4:Z

    iput p6, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$5:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iget-boolean v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$4:Z

    iget v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone$$ExternalSyntheticLambda0;->f$5:F

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;->$r8$lambda$kVB7vgOf9fsjvf9A2PdoJQrZmV4(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;IILandroid/view/View;ZFF)V

    return-void
.end method
