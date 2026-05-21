.class public final synthetic Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda16;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda16;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Workspace;->$r8$lambda$OwVN4FHLoRBDXHru6il3_gRIO3Q(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
