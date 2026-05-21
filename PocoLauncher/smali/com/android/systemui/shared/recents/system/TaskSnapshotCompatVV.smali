.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVV;
.super Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;
.source "TaskSnapshotCompatVV.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getTaskSnapshotInstance(I)Ljava/lang/Object;
    .locals 10

    const-string v0, "android.window.TaskSnapshot"

    .line 23
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    .line 29
    :cond_0
    :try_start_0
    const-class v1, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getTaskSnapshot"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    new-array v7, v5, [Ljava/lang/Object;

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v7, v9

    move-object v5, v6

    move-object v6, v7

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected initLogTag()V
    .locals 1

    .line 19
    const-class v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->TAG:Ljava/lang/String;

    return-void
.end method
