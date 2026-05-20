.class public final synthetic Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iput p2, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iget v1, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;->f$1:F

    iget p0, p0, Lcom/miui/home/launcher/AutoLayoutAnimation$$ExternalSyntheticLambda0;->f$2:F

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation;->$r8$lambda$E9Fsh5c_QTQsiLASkpWi3vLJFY0(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;FFF)V

    return-void
.end method
