.class public final synthetic Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    check-cast p1, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleGadgetLifeCycle(Lcom/miui/home/launcher/gadget/Gadget;)V

    return-void
.end method
