.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;
.super Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;
.source "TaskSnapshotCompatVU.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mIsSnapshotInvalidate:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;-><init>(Ljava/lang/Object;)V

    .line 13
    const-class p1, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->mIsSnapshotInvalidate:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->initLogTag()V

    .line 19
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->getIsSnapshotInvalidateFromTaskSnapshot()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->mIsSnapshotInvalidate:Z

    return-void
.end method

.method private getIsSnapshotInvalidateFromTaskSnapshot()Z
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    if-nez v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "mIsNothing"

    invoke-static {v2, v0, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->TAG:Ljava/lang/String;

    const-string v0, "getIsInvalidateFromTaskSnapshot, don\'t find method"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsInvalidateFromTaskSnapshot, isInvalidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsInvalidateFromTaskSnapshot, return, mTaskSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshot:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mTaskSnapshotClazz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->mTaskSnapshotClazz:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getTaskSnapshotInstance(I)Ljava/lang/Object;
    .locals 11

    const-string v0, "android.window.TaskSnapshot"

    .line 53
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    .line 59
    :cond_0
    :try_start_0
    const-class v1, Landroid/app/IActivityTaskManager;

    .line 60
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getTaskSnapshot"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v10, 0x2

    aput-object v7, v6, v10

    new-array v7, v5, [Ljava/lang/Object;

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v7, v9

    aput-object p0, v7, v10

    move-object v5, v6

    move-object v6, v7

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->mIsSnapshotInvalidate:Z

    iput-boolean p0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->isSnapshotInvalidate:Z

    :cond_0
    return-object v0
.end method

.method protected initLogTag()V
    .locals 1

    .line 23
    const-class v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->TAG:Ljava/lang/String;

    return-void
.end method
