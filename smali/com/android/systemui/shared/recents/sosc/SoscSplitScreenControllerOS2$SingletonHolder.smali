.class Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$SingletonHolder;
.super Ljava/lang/Object;
.source "SoscSplitScreenControllerOS2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;-><init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;)V

    sput-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$SingletonHolder;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$SingletonHolder;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    return-object v0
.end method
