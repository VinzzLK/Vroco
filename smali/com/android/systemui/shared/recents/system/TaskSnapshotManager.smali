.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotManager;
.super Ljava/lang/Object;
.source "TaskSnapshotManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTaskSnapshotCompatWithTaskKey(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotManager;->getTaskSnapshotInstance(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotManager;->createTaskSnapshotCompatWithTaskSnapshot(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static createTaskSnapshotCompatWithTaskSnapshot(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    .line 9
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVV;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVV;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 13
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_3
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getTaskSnapshotInstance(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVV;->getTaskSnapshotInstance(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->getTaskSnapshotInstance(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->getTaskSnapshotInstance(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 33
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->getTaskSnapshotInstance(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0

    return-object p0

    .line 36
    :cond_3
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->getTaskSnapshotInstance(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0

    return-object p0
.end method
