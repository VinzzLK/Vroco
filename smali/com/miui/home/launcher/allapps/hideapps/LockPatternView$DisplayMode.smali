.class public final enum Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 184
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Correct:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    .line 189
    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    const-string v3, "Animate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Animate:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    .line 194
    new-instance v3, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    const-string v5, "Wrong"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->Wrong:Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 179
    sput-object v5, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;
    .locals 1

    .line 179
    const-class v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;
    .locals 1

    .line 179
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->$VALUES:[Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;

    return-object v0
.end method
