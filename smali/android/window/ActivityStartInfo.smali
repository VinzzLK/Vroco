.class public Landroid/window/ActivityStartInfo;
.super Ljava/lang/Object;
.source "ActivityStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ActivityStartInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBounds:Landroid/graphics/Rect;

.field mIsTranslucent:Z

.field mLaunchFromHome:Z

.field mLaunchSuccess:Z

.field mPackageName:Ljava/lang/String;

.field mStartingWindowColor:I

.field mStartingWindowType:I

.field mTaskId:I

.field mTransitionSyncId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/window/ActivityStartInfo$1;

    invoke-direct {v0}, Landroid/window/ActivityStartInfo$1;-><init>()V

    sput-object v0, Landroid/window/ActivityStartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityStartInfo;->mBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroid/window/ActivityStartInfo;->mStartingWindowType:I

    .line 18
    iput v0, p0, Landroid/window/ActivityStartInfo;->mTaskId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityStartInfo;->mBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroid/window/ActivityStartInfo;->mStartingWindowType:I

    .line 18
    iput v0, p0, Landroid/window/ActivityStartInfo;->mTaskId:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ActivityStartInfo;->mPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ActivityStartInfo;->mIsTranslucent:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ActivityStartInfo;->mTransitionSyncId:I

    .line 40
    iget-object v0, p0, Landroid/window/ActivityStartInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ActivityStartInfo;->mStartingWindowColor:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ActivityStartInfo;->mLaunchFromHome:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ActivityStartInfo;->mLaunchSuccess:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ActivityStartInfo;->mStartingWindowType:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/ActivityStartInfo;->mTaskId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 66
    iget-object p0, p0, Landroid/window/ActivityStartInfo;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/window/ActivityStartInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStartingWindowColor()I
    .locals 0

    .line 72
    iget p0, p0, Landroid/window/ActivityStartInfo;->mStartingWindowColor:I

    return p0
.end method

.method public getTaskId()I
    .locals 0

    .line 97
    iget p0, p0, Landroid/window/ActivityStartInfo;->mTaskId:I

    return p0
.end method

.method public getTransitionSyncId()I
    .locals 0

    .line 60
    iget p0, p0, Landroid/window/ActivityStartInfo;->mTransitionSyncId:I

    return p0
.end method

.method public isLaunchSuccess()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Landroid/window/ActivityStartInfo;->mLaunchSuccess:Z

    return p0
.end method

.method public isTranslucent()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Landroid/window/ActivityStartInfo;->mIsTranslucent:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStartInfo{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/ActivityStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsTranslucent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/ActivityStartInfo;->mIsTranslucent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTransitionSyncId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/ActivityStartInfo;->mTransitionSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStartingWindowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/ActivityStartInfo;->mStartingWindowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/ActivityStartInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLaunchFromHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/ActivityStartInfo;->mLaunchFromHome:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLaunchSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/ActivityStartInfo;->mLaunchSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStartingWindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/ActivityStartInfo;->mStartingWindowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/window/ActivityStartInfo;->mTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/window/ActivityStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Landroid/window/ActivityStartInfo;->mIsTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    iget v0, p0, Landroid/window/ActivityStartInfo;->mTransitionSyncId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/window/ActivityStartInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    iget p2, p0, Landroid/window/ActivityStartInfo;->mStartingWindowColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean p2, p0, Landroid/window/ActivityStartInfo;->mLaunchFromHome:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    iget-boolean p2, p0, Landroid/window/ActivityStartInfo;->mLaunchSuccess:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    iget p2, p0, Landroid/window/ActivityStartInfo;->mStartingWindowType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget p0, p0, Landroid/window/ActivityStartInfo;->mTaskId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
