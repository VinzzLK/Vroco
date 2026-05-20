.class public final enum Lcom/google/android/filament/Texture$Type;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$Type;

.field public static final enum BYTE:Lcom/google/android/filament/Texture$Type;

.field public static final enum COMPRESSED:Lcom/google/android/filament/Texture$Type;

.field public static final enum FLOAT:Lcom/google/android/filament/Texture$Type;

.field public static final enum HALF:Lcom/google/android/filament/Texture$Type;

.field public static final enum INT:Lcom/google/android/filament/Texture$Type;

.field public static final enum SHORT:Lcom/google/android/filament/Texture$Type;

.field public static final enum UBYTE:Lcom/google/android/filament/Texture$Type;

.field public static final enum UINT:Lcom/google/android/filament/Texture$Type;

.field public static final enum UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

.field public static final enum USHORT:Lcom/google/android/filament/Texture$Type;

.field public static final enum USHORT_565:Lcom/google/android/filament/Texture$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 281
    new-instance v0, Lcom/google/android/filament/Texture$Type;

    const-string v1, "UBYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Type;->UBYTE:Lcom/google/android/filament/Texture$Type;

    .line 283
    new-instance v1, Lcom/google/android/filament/Texture$Type;

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Texture$Type;->BYTE:Lcom/google/android/filament/Texture$Type;

    .line 285
    new-instance v3, Lcom/google/android/filament/Texture$Type;

    const-string v5, "USHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Texture$Type;->USHORT:Lcom/google/android/filament/Texture$Type;

    .line 287
    new-instance v5, Lcom/google/android/filament/Texture$Type;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/Texture$Type;->SHORT:Lcom/google/android/filament/Texture$Type;

    .line 289
    new-instance v7, Lcom/google/android/filament/Texture$Type;

    const-string v9, "UINT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/Texture$Type;->UINT:Lcom/google/android/filament/Texture$Type;

    .line 291
    new-instance v9, Lcom/google/android/filament/Texture$Type;

    const-string v11, "INT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/filament/Texture$Type;->INT:Lcom/google/android/filament/Texture$Type;

    .line 293
    new-instance v11, Lcom/google/android/filament/Texture$Type;

    const-string v13, "HALF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/filament/Texture$Type;->HALF:Lcom/google/android/filament/Texture$Type;

    .line 295
    new-instance v13, Lcom/google/android/filament/Texture$Type;

    const-string v15, "FLOAT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/filament/Texture$Type;->FLOAT:Lcom/google/android/filament/Texture$Type;

    .line 297
    new-instance v15, Lcom/google/android/filament/Texture$Type;

    const-string v14, "COMPRESSED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    .line 299
    new-instance v14, Lcom/google/android/filament/Texture$Type;

    const-string v12, "UINT_10F_11F_11F_REV"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/android/filament/Texture$Type;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

    .line 301
    new-instance v12, Lcom/google/android/filament/Texture$Type;

    const-string v10, "USHORT_565"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/android/filament/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/android/filament/Texture$Type;->USHORT_565:Lcom/google/android/filament/Texture$Type;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/google/android/filament/Texture$Type;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 279
    sput-object v10, Lcom/google/android/filament/Texture$Type;->$VALUES:[Lcom/google/android/filament/Texture$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Type;
    .locals 1

    .line 279
    const-class v0, Lcom/google/android/filament/Texture$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Type;
    .locals 1

    .line 279
    sget-object v0, Lcom/google/android/filament/Texture$Type;->$VALUES:[Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Type;

    return-object v0
.end method
