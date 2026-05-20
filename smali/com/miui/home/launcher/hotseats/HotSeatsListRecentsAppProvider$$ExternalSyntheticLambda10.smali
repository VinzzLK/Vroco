.class public final synthetic Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->$r8$lambda$d3rYSPcTDA_Jw84ZKFsIrBmHaS4(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
