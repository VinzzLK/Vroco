.class final enum Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;
.super Ljava/lang/Enum;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

.field public static final enum CHOICE_MULTI:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

.field public static final enum CHOICE_SINGLE:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

.field public static final enum DEFAULT:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3005
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->DEFAULT:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    .line 3006
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    const-string v3, "CHOICE_SINGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->CHOICE_SINGLE:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    .line 3007
    new-instance v3, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    const-string v5, "CHOICE_MULTI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->CHOICE_MULTI:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    const/4 v5, 0x3

    new-array v5, v5, [Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3004
    sput-object v5, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->$VALUES:[Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3004
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;
    .locals 1

    .line 3004
    const-class v0, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    return-object p0
.end method

.method public static values()[Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;
    .locals 1

    .line 3004
    sget-object v0, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->$VALUES:[Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    invoke-virtual {v0}, [Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    return-object v0
.end method
