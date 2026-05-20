.class Lcom/miui/home/launcher/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->BatchOperation(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$currentScreenCells:Ljava/lang/String;

.field final synthetic val$itemInfo:Ljava/util/ArrayList;

.field final synthetic val$launcherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

.field final synthetic val$screenInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$screenInfo:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$itemInfo:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$launcherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iput-object p5, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$currentScreenCells:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$screenInfo:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->access$2100(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$screenInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "_id"

    .line 924
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 925
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$itemInfo:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->access$2200(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "Launcher.Model"

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch operation screen info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", all operation size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$launcherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$currentScreenCells:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DbCellCountHelper;->updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V

    goto :goto_1

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$launcherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$4;->val$currentScreenCells:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DbCellCountHelper;->updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 942
    :cond_2
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$2300()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 943
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$2300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.Model"

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatchOperation error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 942
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$2300()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 943
    :try_start_3
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$2300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    monitor-exit v0

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 942
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$2300()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 943
    :try_start_4
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$2300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 945
    throw v0

    :catchall_3
    move-exception p0

    .line 944
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method
