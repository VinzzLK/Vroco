.class public Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;
.super Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.source "GroupedRecentTaskInfoU.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU$1;

    invoke-direct {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>()V

    .line 86
    sget-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    .line 87
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/wm/shell/util/SplitBoundsV;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/SplitBoundsV;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/android/wm/shell/util/SplitBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/SplitBounds;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mType:I

    return-void
.end method

.method private getTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " baseIntent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " winMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2

    .line 113
    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 114
    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    const-string v2, "Task"

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, ", Task"

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v1, v3, v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->getTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    if-eqz v1, :cond_2

    const-string v1, ", SplitBounds: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ", Type="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mType:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "TYPE_FREEFORM"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string p0, "TYPE_SPLIT"

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string p0, "TYPE_SINGLE"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfoU;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
