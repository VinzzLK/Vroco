.class public final synthetic Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->$r8$lambda$pe-snYymJisR4ZAsugbrCfcoVSY(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
