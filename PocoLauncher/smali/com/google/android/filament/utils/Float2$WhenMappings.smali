.class public final synthetic Lcom/google/android/filament/utils/Float2$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 14

    invoke-static {}, Lcom/google/android/filament/utils/VectorComponent;->values()[Lcom/google/android/filament/utils/VectorComponent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/filament/utils/Float2$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/google/android/filament/utils/VectorComponent;->X:Lcom/google/android/filament/utils/VectorComponent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/google/android/filament/utils/VectorComponent;->R:Lcom/google/android/filament/utils/VectorComponent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    sget-object v4, Lcom/google/android/filament/utils/VectorComponent;->S:Lcom/google/android/filament/utils/VectorComponent;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    aput v7, v0, v6

    sget-object v6, Lcom/google/android/filament/utils/VectorComponent;->Y:Lcom/google/android/filament/utils/VectorComponent;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x4

    aput v9, v0, v8

    sget-object v8, Lcom/google/android/filament/utils/VectorComponent;->G:Lcom/google/android/filament/utils/VectorComponent;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x5

    aput v11, v0, v10

    sget-object v10, Lcom/google/android/filament/utils/VectorComponent;->T:Lcom/google/android/filament/utils/VectorComponent;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v13, 0x6

    aput v13, v0, v12

    invoke-static {}, Lcom/google/android/filament/utils/VectorComponent;->values()[Lcom/google/android/filament/utils/VectorComponent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/filament/utils/Float2$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1

    return-void
.end method
