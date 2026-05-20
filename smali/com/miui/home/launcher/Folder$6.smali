.class Lcom/miui/home/launcher/Folder$6;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$6;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 497
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Folder$6;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Folder$6;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$6;->this$0:Lcom/miui/home/launcher/Folder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$300(Lcom/miui/home/launcher/Folder;Z)V

    .line 499
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$6;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p0}, Lcom/miui/home/launcher/Folder;->access$1000(Lcom/miui/home/launcher/Folder;)V

    :cond_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method
