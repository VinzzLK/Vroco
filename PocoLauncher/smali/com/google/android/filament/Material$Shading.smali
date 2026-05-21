.class public final enum Lcom/google/android/filament/Material$Shading;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shading"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$Shading;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$Shading;

.field public static final enum CLOTH:Lcom/google/android/filament/Material$Shading;

.field public static final enum LIT:Lcom/google/android/filament/Material$Shading;

.field public static final enum SPECULAR_GLOSSINESS:Lcom/google/android/filament/Material$Shading;

.field public static final enum SUBSURFACE:Lcom/google/android/filament/Material$Shading;

.field public static final enum UNLIT:Lcom/google/android/filament/Material$Shading;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lcom/google/android/filament/Material$Shading;

    const-string v1, "UNLIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Shading;->UNLIT:Lcom/google/android/filament/Material$Shading;

    .line 63
    new-instance v1, Lcom/google/android/filament/Material$Shading;

    const-string v3, "LIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Material$Shading;->LIT:Lcom/google/android/filament/Material$Shading;

    .line 72
    new-instance v3, Lcom/google/android/filament/Material$Shading;

    const-string v5, "SUBSURFACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Material$Shading;->SUBSURFACE:Lcom/google/android/filament/Material$Shading;

    .line 81
    new-instance v5, Lcom/google/android/filament/Material$Shading;

    const-string v7, "CLOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/Material$Shading;->CLOTH:Lcom/google/android/filament/Material$Shading;

    .line 90
    new-instance v7, Lcom/google/android/filament/Material$Shading;

    const-string v9, "SPECULAR_GLOSSINESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/Material$Shading;->SPECULAR_GLOSSINESS:Lcom/google/android/filament/Material$Shading;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/filament/Material$Shading;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 46
    sput-object v9, Lcom/google/android/filament/Material$Shading;->$VALUES:[Lcom/google/android/filament/Material$Shading;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$Shading;
    .locals 1

    .line 46
    const-class v0, Lcom/google/android/filament/Material$Shading;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$Shading;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$Shading;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/filament/Material$Shading;->$VALUES:[Lcom/google/android/filament/Material$Shading;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$Shading;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$Shading;

    return-object v0
.end method
