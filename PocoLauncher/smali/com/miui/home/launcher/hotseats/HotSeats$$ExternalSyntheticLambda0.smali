.class public final synthetic Lcom/miui/home/launcher/hotseats/HotSeats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeats$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/HotSeats$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeats$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->$r8$lambda$8o6fikORM1ADOu6AFBCbpI0ZmsY(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
