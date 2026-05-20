.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/FolderGridView;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderGridView;ZLcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$1:Lcom/miui/home/launcher/FolderGridView;

    iput-boolean p3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$3:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$1:Lcom/miui/home/launcher/FolderGridView;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$2:Z

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda31;->f$3:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$-HQtgsXvyCfCiZFt2z3fQS62HG0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderGridView;ZLcom/miui/home/launcher/FolderIcon;)V

    return-void
.end method
