.class final enum Lcom/miui/maml/data/FormatFunctions$Fun;
.super Ljava/lang/Enum;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/FormatFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/FormatFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/FormatFunctions$Fun;

.field public static final enum FORMAT_DATE:Lcom/miui/maml/data/FormatFunctions$Fun;

.field public static final enum FORMAT_FLOAT:Lcom/miui/maml/data/FormatFunctions$Fun;

.field public static final enum FORMAT_INT:Lcom/miui/maml/data/FormatFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/FormatFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/miui/maml/data/FormatFunctions$Fun;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/FormatFunctions$Fun;->INVALID:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 16
    new-instance v1, Lcom/miui/maml/data/FormatFunctions$Fun;

    const-string v3, "FORMAT_DATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 17
    new-instance v3, Lcom/miui/maml/data/FormatFunctions$Fun;

    const-string v5, "FORMAT_FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 18
    new-instance v5, Lcom/miui/maml/data/FormatFunctions$Fun;

    const-string v7, "FORMAT_INT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lcom/miui/maml/data/FormatFunctions$Fun;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/maml/data/FormatFunctions$Fun;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 13
    sput-object v7, Lcom/miui/maml/data/FormatFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/FormatFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/FormatFunctions$Fun;
    .locals 1

    .line 13
    const-class v0, Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/FormatFunctions$Fun;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/FormatFunctions$Fun;
    .locals 1

    .line 13
    sget-object v0, Lcom/miui/maml/data/FormatFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v0}, [Lcom/miui/maml/data/FormatFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/FormatFunctions$Fun;

    return-object v0
.end method
