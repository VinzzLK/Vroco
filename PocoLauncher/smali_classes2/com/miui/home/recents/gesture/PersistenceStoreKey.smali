.class public final enum Lcom/miui/home/recents/gesture/PersistenceStoreKey;
.super Ljava/lang/Enum;
.source "PersistenceStoreKey.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/gesture/PersistenceStoreKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/gesture/PersistenceStoreKey;

.field public static final enum KEY_DOUBLE_CLICK_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

.field public static final enum KEY_LONG_PRESS_BACK_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

.field public static final enum KEY_LONG_PRESS_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

.field public static final enum KEY_LONG_PRESS_HOME_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

.field public static final enum KEY_LONG_PRESS_MENU_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/miui/home/recents/gesture/PersistenceStoreKey;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_DOUBLE_CLICK_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_MENU_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_HOME_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_BACK_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const-string v1, "KEY_LONG_PRESS_GESTURE_BAR"

    const/4 v2, 0x0

    const-string v3, "NavLongPress"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 5
    new-instance v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const-string v1, "KEY_DOUBLE_CLICK_GESTURE_BAR"

    const/4 v2, 0x1

    const-string v3, "NavDoubleClick"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_DOUBLE_CLICK_GESTURE_BAR:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 6
    new-instance v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const-string v1, "KEY_LONG_PRESS_MENU_KEY"

    const/4 v2, 0x2

    const-string v3, "long_press_menu_key"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_MENU_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 7
    new-instance v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const-string v1, "KEY_LONG_PRESS_HOME_KEY"

    const/4 v2, 0x3

    const-string v3, "long_press_home_key"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_HOME_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    .line 8
    new-instance v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    const-string v1, "KEY_LONG_PRESS_BACK_KEY"

    const/4 v2, 0x4

    const-string v3, "long_press_back_key"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->KEY_LONG_PRESS_BACK_KEY:Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    invoke-static {}, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->$values()[Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->$VALUES:[Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/gesture/PersistenceStoreKey;
    .locals 1

    const-class v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/gesture/PersistenceStoreKey;
    .locals 1

    sget-object v0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->$VALUES:[Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/gesture/PersistenceStoreKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/miui/home/recents/gesture/PersistenceStoreKey;->key:Ljava/lang/String;

    return-object p0
.end method
