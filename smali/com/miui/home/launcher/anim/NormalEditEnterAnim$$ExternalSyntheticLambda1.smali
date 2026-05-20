.class public final synthetic Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Lcom/miui/home/launcher/Workspace;

.field public final synthetic f$6:F

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;ZFFFLcom/miui/home/launcher/Workspace;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iput-boolean p2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$1:Z

    iput p3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$2:F

    iput p4, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$3:F

    iput p5, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$4:F

    iput-object p6, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$5:Lcom/miui/home/launcher/Workspace;

    iput p7, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$6:F

    iput-boolean p8, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$7:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 9

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-boolean v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$1:Z

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$2:F

    iget v3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$3:F

    iget v4, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$4:F

    iget-object v5, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$5:Lcom/miui/home/launcher/Workspace;

    iget v6, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$6:F

    iget-boolean v7, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$$ExternalSyntheticLambda1;->f$7:Z

    move v8, p1

    invoke-static/range {v0 .. v8}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->$r8$lambda$SF5_qd_K1tXs_n-lRYo_fNdJue4(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;ZFFFLcom/miui/home/launcher/Workspace;FZF)V

    return-void
.end method
