.class Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$InstanceHolder;
.super Ljava/lang/Object;
.source "InteractionJankMonitorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;-><init>(Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$1;)V

    sput-object v0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$InstanceHolder;->INSTANCE:Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$InstanceHolder;->INSTANCE:Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;

    return-object v0
.end method
