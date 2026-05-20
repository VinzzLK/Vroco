.class public Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;
.super Landroid/app/TaskStackListener;
.source "TaskStackChangeListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;
    }
.end annotation


# static fields
.field private static final ITaskStackListener_DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field private static final TAG:Ljava/lang/String;

.field private static sIsOnTaskSnapshotChangedTransactCodeValid:Z

.field private static sOnTaskSnapshotChangedTransactCode:I


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTmpListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$V9cYIgo5nLWh7ebCwfNMPSTr0MY(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->lambda$unregisterTaskStackListener$0(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YkWGT19xjUhbArcS7X1IP-k00t0(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->lambda$onTransact$1(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->sIsOnTaskSnapshotChangedTransactCodeValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListenersList:Ljava/util/List;

    :try_start_0
    const-string v0, "android.app.ITaskStackListener$Stub"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "TRANSACTION_onTaskSnapshotChanged"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->sOnTaskSnapshotChangedTransactCode:I

    .line 41
    sput-boolean v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->sIsOnTaskSnapshotChangedTransactCodeValid:Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string v2, "onTransact"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->sIsOnTaskSnapshotChangedTransactCodeValid:Z

    .line 46
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskSnapshotDeamon"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->backgroundHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;-><init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->getListener(Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object p0

    return-object p0
.end method

.method private getListener(Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;",
            ">;>;I)",
            "Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 372
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onTransact$1(Ljava/lang/Object;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string v2, "Task Snapshot timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$unregisterTaskStackListener$0(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityPinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onActivityPinned(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 146
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onActivityPinned(Ljava/lang/String;II)V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskDescriptionChanged =  taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskDisplayChanged =  taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " newDisplayId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskSnapshotChanged(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidT()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListenersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListenersList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListenersList:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->getListener(Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskStackChangedBackground()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 120
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->sIsOnTaskSnapshotChangedTransactCodeValid:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->sOnTaskSnapshotChangedTransactCode:I

    if-ne v0, p1, :cond_1

    const-string p1, "android.app.ITaskStackListener"

    .line 85
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 89
    invoke-static {p2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getTaskSnapshot(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 93
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->backgroundHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/lang/Object;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onTaskSnapshotChanged(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 103
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/TaskStackListener;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v0

    .line 58
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mRegistered:Z

    if-nez p1, :cond_0

    .line 64
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string v0, "Failed to call registerTaskStackListener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string p1, "registerTaskStackListener"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 60
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    invoke-interface {p0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterTaskStackListener"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
