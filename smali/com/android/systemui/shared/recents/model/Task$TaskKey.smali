.class public Lcom/android/systemui/shared/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isAccessLocked:Z

.field public isScreening:Z

.field public isThumbnailBlur:Z

.field public isVtCamera:Z

.field public isWorldCirculate:Z

.field public lastActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mHashCode:I

.field public stackId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final userId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public windowingMode:I

.field public worldCirculateTargetDeviceDeviceName:Ljava/lang/String;

.field public worldCirculateTargetDevicePlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILandroid/content/Intent;IJZZZLandroid/content/ComponentName;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    const-string v0, "AndroidPhone"

    .line 98
    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDevicePlatform:Ljava/lang/String;

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDeviceDeviceName:Ljava/lang/String;

    .line 122
    iput p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 123
    iput p2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    .line 124
    iput p3, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    .line 125
    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 126
    iput p5, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 127
    iput-wide p6, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 128
    iput-boolean p8, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 129
    iput-boolean p9, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isAccessLocked:Z

    .line 130
    iput-boolean p10, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 131
    iput-object p11, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    .line 132
    sget-object p1, Lcom/android/systemui/shared/recents/model/Task;->VT_CAMERA_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p1, p11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    .line 133
    invoke-direct {p0, p12}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateWorldCirculateInfo(Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    const-string v1, "AndroidPhone"

    .line 98
    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDevicePlatform:Ljava/lang/String;

    const-string v1, ""

    .line 99
    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDeviceDeviceName:Ljava/lang/String;

    .line 102
    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 103
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/app/TaskInfo;->stackId:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    .line 104
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    .line 105
    iget-object v1, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 106
    iget v1, p1, Landroid/app/TaskInfo;->userId:I

    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 107
    iget-wide v1, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    iput-wide v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isAccessLocked:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 112
    iget-object p1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    .line 113
    sget-object v0, Lcom/android/systemui/shared/recents/model/Task;->VT_CAMERA_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    .line 114
    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateWorldCirculateInfo(Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method private updateHashCode()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    return-void
.end method

.method private updateWorldCirculateInfo(Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mIsWorldCirculate:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    .line 140
    iget-object v0, p1, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateTargetDevicePlatform:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDevicePlatform:Ljava/lang/String;

    .line 141
    iget-object p1, p1, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateTargetDeviceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateTargetDeviceDeviceName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 179
    instance-of v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    check-cast p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 183
    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopComponentOrBaseComponent()Landroid/content/ComponentName;
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.securitycenter"

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    return p0
.end method

.method public setLastActiveTime(J)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    return-void
.end method

.method public setStackId(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskKey{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isThumbnailBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAccessLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isAccessLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScreening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
