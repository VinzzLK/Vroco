.class public final enum Lcom/google/android/filament/VertexBuffer$VertexAttribute;
.super Ljava/lang/Enum;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/VertexBuffer$VertexAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 61
    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 62
    new-instance v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v3, "TANGENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 63
    new-instance v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v5, "COLOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 64
    new-instance v5, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v7, "UV0"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 65
    new-instance v7, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v9, "UV1"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 66
    new-instance v9, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v11, "BONE_INDICES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 67
    new-instance v11, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v13, "BONE_WEIGHTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 68
    new-instance v13, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v15, "UNUSED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 69
    new-instance v15, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v14, "CUSTOM0"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 70
    new-instance v14, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v12, "CUSTOM1"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 71
    new-instance v12, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v10, "CUSTOM2"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 72
    new-instance v10, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v8, "CUSTOM3"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 73
    new-instance v8, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v6, "CUSTOM4"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 74
    new-instance v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v4, "CUSTOM5"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 75
    new-instance v4, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v2, "CUSTOM6"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    .line 76
    new-instance v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v6, "CUSTOM7"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 60
    sput-object v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    .line 60
    const-class v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual {v0}, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object v0
.end method
