.class public final enum Lcom/miui/home/launcher/WidgetPermissionAction;
.super Ljava/lang/Enum;
.source "WidgetPermissionAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/WidgetPermissionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/WidgetPermissionAction;

.field public static final enum CLICK:Lcom/miui/home/launcher/WidgetPermissionAction;

.field public static final enum INVISIBLE:Lcom/miui/home/launcher/WidgetPermissionAction;

.field public static final enum VISIBLE:Lcom/miui/home/launcher/WidgetPermissionAction;


# instance fields
.field public final bindAction:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 5
    new-instance v6, Lcom/miui/home/launcher/WidgetPermissionAction;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const-string v3, "click"

    const-string v4, "click"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/WidgetPermissionAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/miui/home/launcher/WidgetPermissionAction;->CLICK:Lcom/miui/home/launcher/WidgetPermissionAction;

    .line 7
    new-instance v0, Lcom/miui/home/launcher/WidgetPermissionAction;

    const-string v8, "VISIBLE"

    const/4 v9, 0x1

    const-string/jumbo v10, "visible"

    const-string/jumbo v11, "show"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/launcher/WidgetPermissionAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/miui/home/launcher/WidgetPermissionAction;->VISIBLE:Lcom/miui/home/launcher/WidgetPermissionAction;

    .line 9
    new-instance v1, Lcom/miui/home/launcher/WidgetPermissionAction;

    const-string v14, "INVISIBLE"

    const/4 v15, 0x2

    const-string v16, "invisible"

    const-string/jumbo v17, "show"

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/miui/home/launcher/WidgetPermissionAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/miui/home/launcher/WidgetPermissionAction;->INVISIBLE:Lcom/miui/home/launcher/WidgetPermissionAction;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/miui/home/launcher/WidgetPermissionAction;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 3
    sput-object v2, Lcom/miui/home/launcher/WidgetPermissionAction;->$VALUES:[Lcom/miui/home/launcher/WidgetPermissionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/miui/home/launcher/WidgetPermissionAction;->name:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/miui/home/launcher/WidgetPermissionAction;->bindAction:Ljava/lang/String;

    .line 19
    iput-boolean p5, p0, Lcom/miui/home/launcher/WidgetPermissionAction;->visible:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/WidgetPermissionAction;
    .locals 1

    .line 3
    const-class v0, Lcom/miui/home/launcher/WidgetPermissionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/WidgetPermissionAction;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/WidgetPermissionAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/home/launcher/WidgetPermissionAction;->$VALUES:[Lcom/miui/home/launcher/WidgetPermissionAction;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/WidgetPermissionAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/WidgetPermissionAction;

    return-object v0
.end method
