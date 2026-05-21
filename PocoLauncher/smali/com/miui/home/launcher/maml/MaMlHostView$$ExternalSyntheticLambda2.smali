.class public final synthetic Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlHostView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlHostView$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->$r8$lambda$9Zje-FK4siOSXdOqxkcRMQQkJkM(Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/util/function/Consumer;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method
