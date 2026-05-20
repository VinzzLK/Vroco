.class Lcom/miui/home/launcher/Launcher$27;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$bEMq6RC0zE7mWkxtD2nVfZ8n6ok(Lcom/miui/home/launcher/Launcher$27;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$27;->lambda$onChange$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eiHLni0OyAkjJXtK0YfeZdX47zA(Lcom/miui/home/launcher/Launcher$27;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$27;->lambda$onChange$1(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4719
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$27;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4726
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$27;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->refreshScreenCellsLocked(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onChange$1(Ljava/lang/Object;)V
    .locals 0

    .line 4729
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4730
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    .line 4732
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$27;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onScreenCellLocked(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 4722
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$27;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4725
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/Launcher$27$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Launcher$27$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher$27;)V

    new-instance v0, Lcom/miui/home/launcher/Launcher$27$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$27$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$27;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
