.class public final enum Lcom/google/android/filament/Texture$CompressedFormat;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressedFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$CompressedFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT1_RGB:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT1_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT3_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum DXT5_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_R11:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_R11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_RG11:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum EAC_RG11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_EAC_RGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_EAC_SRGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_RGB8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_RGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_SRGB8:Lcom/google/android/filament/Texture$CompressedFormat;

.field public static final enum ETC2_SRGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 230
    new-instance v0, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v1, "EAC_R11"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_R11:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v1, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v3, "EAC_R11_SIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_R11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v3, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v5, "EAC_RG11"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_RG11:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v5, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v7, "EAC_RG11_SIGNED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/Texture$CompressedFormat;->EAC_RG11_SIGNED:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 231
    new-instance v7, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v9, "ETC2_RGB8"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_RGB8:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v9, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v11, "ETC2_SRGB8"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_SRGB8:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 232
    new-instance v11, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v13, "ETC2_RGB8_A1"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_RGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v13, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v15, "ETC2_SRGB8_A1"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_SRGB8_A1:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 233
    new-instance v15, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v14, "ETC2_EAC_RGBA8"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_EAC_RGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v14, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v12, "ETC2_EAC_SRGBA8"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/android/filament/Texture$CompressedFormat;->ETC2_EAC_SRGBA8:Lcom/google/android/filament/Texture$CompressedFormat;

    .line 236
    new-instance v12, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v10, "DXT1_RGB"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/android/filament/Texture$CompressedFormat;->DXT1_RGB:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v10, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v8, "DXT1_RGBA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/android/filament/Texture$CompressedFormat;->DXT1_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v8, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v6, "DXT3_RGBA"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/android/filament/Texture$CompressedFormat;->DXT3_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    new-instance v6, Lcom/google/android/filament/Texture$CompressedFormat;

    const-string v4, "DXT5_RGBA"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/google/android/filament/Texture$CompressedFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/filament/Texture$CompressedFormat;->DXT5_RGBA:Lcom/google/android/filament/Texture$CompressedFormat;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/google/android/filament/Texture$CompressedFormat;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 228
    sput-object v4, Lcom/google/android/filament/Texture$CompressedFormat;->$VALUES:[Lcom/google/android/filament/Texture$CompressedFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$CompressedFormat;
    .locals 1

    .line 228
    const-class v0, Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$CompressedFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$CompressedFormat;
    .locals 1

    .line 228
    sget-object v0, Lcom/google/android/filament/Texture$CompressedFormat;->$VALUES:[Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$CompressedFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$CompressedFormat;

    return-object v0
.end method
