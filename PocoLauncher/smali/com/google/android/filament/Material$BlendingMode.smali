.class public final enum Lcom/google/android/filament/Material$BlendingMode;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$BlendingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum ADD:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum FADE:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum MASKED:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum MULTIPLY:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum OPAQUE:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum SCREEN:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum TRANSPARENT:Lcom/google/android/filament/Material$BlendingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 117
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const-string v1, "OPAQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->OPAQUE:Lcom/google/android/filament/Material$BlendingMode;

    .line 123
    new-instance v1, Lcom/google/android/filament/Material$BlendingMode;

    const-string v3, "TRANSPARENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Material$BlendingMode;->TRANSPARENT:Lcom/google/android/filament/Material$BlendingMode;

    .line 126
    new-instance v3, Lcom/google/android/filament/Material$BlendingMode;

    const-string v5, "ADD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Material$BlendingMode;->ADD:Lcom/google/android/filament/Material$BlendingMode;

    .line 129
    new-instance v5, Lcom/google/android/filament/Material$BlendingMode;

    const-string v7, "MASKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/Material$BlendingMode;->MASKED:Lcom/google/android/filament/Material$BlendingMode;

    .line 135
    new-instance v7, Lcom/google/android/filament/Material$BlendingMode;

    const-string v9, "FADE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/Material$BlendingMode;->FADE:Lcom/google/android/filament/Material$BlendingMode;

    .line 138
    new-instance v9, Lcom/google/android/filament/Material$BlendingMode;

    const-string v11, "MULTIPLY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/filament/Material$BlendingMode;->MULTIPLY:Lcom/google/android/filament/Material$BlendingMode;

    .line 141
    new-instance v11, Lcom/google/android/filament/Material$BlendingMode;

    const-string v13, "SCREEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/filament/Material$BlendingMode;->SCREEN:Lcom/google/android/filament/Material$BlendingMode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/filament/Material$BlendingMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 115
    sput-object v13, Lcom/google/android/filament/Material$BlendingMode;->$VALUES:[Lcom/google/android/filament/Material$BlendingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$BlendingMode;
    .locals 1

    .line 115
    const-class v0, Lcom/google/android/filament/Material$BlendingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$BlendingMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$BlendingMode;
    .locals 1

    .line 115
    sget-object v0, Lcom/google/android/filament/Material$BlendingMode;->$VALUES:[Lcom/google/android/filament/Material$BlendingMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$BlendingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$BlendingMode;

    return-object v0
.end method
