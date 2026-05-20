.class public final Landroid/window/TransitionFilter$Requirement;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Requirement"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter$Requirement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActivityType:I

.field public mFlags:I

.field public mModes:[I

.field public mMustBeIndependent:Z

.field public mMustBeTask:Z

.field public mNot:Z

.field public mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Landroid/window/TransitionFilter$Requirement$1;

    invoke-direct {v0}, Landroid/window/TransitionFilter$Requirement$1;-><init>()V

    sput-object v0, Landroid/window/TransitionFilter$Requirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 112
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 117
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 120
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 122
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 126
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 161
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "no implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 142
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no implementation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
