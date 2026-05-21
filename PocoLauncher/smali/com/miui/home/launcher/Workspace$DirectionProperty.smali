.class public final enum Lcom/miui/home/launcher/Workspace$DirectionProperty;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectionProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/Workspace$DirectionProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/Workspace$DirectionProperty;

.field public static final enum ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

.field public static final enum X:Lcom/miui/home/launcher/Workspace$DirectionProperty;


# instance fields
.field private final viewProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4246
    new-instance v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    sget-object v1, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    const-string v2, "X"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    .line 4247
    new-instance v1, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const-string v4, "ALPHA"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/miui/home/launcher/Workspace$DirectionProperty;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/miui/home/launcher/Workspace$DirectionProperty;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 4245
    sput-object v2, Lcom/miui/home/launcher/Workspace$DirectionProperty;->$VALUES:[Lcom/miui/home/launcher/Workspace$DirectionProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Property;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4252
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->viewProperty:Landroid/util/Property;

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;
    .locals 0

    .line 4245
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->viewProperty:Landroid/util/Property;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/Workspace$DirectionProperty;
    .locals 1

    .line 4245
    const-class v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/Workspace$DirectionProperty;
    .locals 1

    .line 4245
    sget-object v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->$VALUES:[Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/Workspace$DirectionProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/Workspace$DirectionProperty;

    return-object v0
.end method
