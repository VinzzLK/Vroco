.class public final synthetic Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda23;->f$0:Lcom/miui/home/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda23;->f$0:Lcom/miui/home/launcher/Workspace;

    check-cast p1, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Workspace;->$r8$lambda$q2eVoIyo4jwUfHKM1vKmm_f0l24(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/gadget/Gadget;)Z

    move-result p0

    return p0
.end method
