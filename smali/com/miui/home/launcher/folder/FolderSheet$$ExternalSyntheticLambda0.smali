.class public final synthetic Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/FolderInfo;

.field public final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/FolderInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderSheet;->$r8$lambda$DG9UNkebJrqzcIwMoeO0jYFdKIo(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
