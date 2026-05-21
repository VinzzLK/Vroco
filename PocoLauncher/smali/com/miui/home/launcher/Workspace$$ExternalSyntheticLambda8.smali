.class public final synthetic Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field public final synthetic f$1:Lcom/miui/home/launcher/CellScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;->f$1:Lcom/miui/home/launcher/CellScreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;->f$1:Lcom/miui/home/launcher/CellScreen;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/Workspace;->$r8$lambda$PxE2iEIhqtPhlB5yLlQFRuB92sA(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellScreen;)V

    return-void
.end method
