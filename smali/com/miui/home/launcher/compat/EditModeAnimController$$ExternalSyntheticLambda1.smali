.class public final synthetic Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/compat/EditModeAnimController;->$r8$lambda$dSGaIquWC0PMaGHTEHMEM6ctvrw(Landroid/view/View;IIF)V

    return-void
.end method
