.class public final synthetic Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->$r8$lambda$0z118Qd-9aIN3RmD39qJ1AMjQlk(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method
