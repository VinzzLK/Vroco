.class Lcom/miui/home/launcher/folder/FolderSheet$3;
.super Ljava/lang/Object;
.source "FolderSheet.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderSheet;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderSheet;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$3;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 802
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    .line 803
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$3;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->access$400(Lcom/miui/home/launcher/folder/FolderSheet;Z)V

    .line 804
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$3;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$500(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
