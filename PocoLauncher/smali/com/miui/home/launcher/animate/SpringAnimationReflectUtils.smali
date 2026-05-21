.class public Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;
.super Ljava/lang/Object;
.source "SpringAnimationReflectUtils.java"


# static fields
.field private static sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

.field private static sGetValueThresholdMethod:Ljava/lang/reflect/Method;

.field private static sIsAtEquilibriumMethod:Ljava/lang/reflect/Method;

.field private static sMassStateClass:Ljava/lang/Class;

.field private static sMassStateValueField:Ljava/lang/reflect/Field;

.field private static sMassStateVelocityField:Ljava/lang/reflect/Field;

.field private static sSetValueThresholdMethod:Ljava/lang/reflect/Method;

.field private static sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

.field private static sUpdateValuesMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cancel(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 6

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 157
    const-class v0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    const-string v3, "endAnimationInternal"

    new-array v4, v2, [Ljava/lang/Class;

    .line 158
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 161
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "cancel error"

    .line 164
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;)D
    .locals 2

    .line 68
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mValueThreshold"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "getValueThreshold error"

    .line 74
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static isAtEquilibrium(Landroidx/dynamicanimation/animation/SpringForce;FF)Z
    .locals 7

    const/4 v0, 0x0

    .line 110
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sIsAtEquilibriumMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isAtEquilibrium"

    new-array v5, v2, [Ljava/lang/Class;

    .line 112
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sIsAtEquilibriumMethod:Ljava/lang/reflect/Method;

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sIsAtEquilibriumMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SpringAnimationReflectUtils"

    const-string/jumbo p2, "updateValues error"

    .line 118
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static resetForceValueThreshold(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 5

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 42
    const-class v1, Landroidx/dynamicanimation/animation/DynamicAnimation;

    const-string v3, "getValueThreshold"

    new-array v4, v2, [Ljava/lang/Class;

    .line 43
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "resetForceValueThreshold error"

    .line 48
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setValueThreshold(Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Object;)V
    .locals 6

    .line 54
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "setValueThreshold"

    new-array v4, v2, [Ljava/lang/Class;

    .line 56
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpringAnimationReflectUtils"

    const-string/jumbo v0, "setValueThreshold error"

    .line 61
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static start(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->resetForceValueThreshold(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 33
    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->startAnimationInternal(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    :cond_0
    return-void
.end method

.method private static startAnimationInternal(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 4

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    const-class v0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    const-string/jumbo v2, "startAnimationInternal"

    new-array v3, v1, [Ljava/lang/Class;

    .line 128
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string/jumbo v1, "startAnimationInternal error"

    .line 134
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;
    .locals 8

    const-wide/32 v0, 0xf4240

    .line 81
    :try_start_0
    div-long/2addr p5, v0

    .line 82
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sUpdateValuesMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "updateValues"

    new-array v6, v3, [Ljava/lang/Class;

    .line 84
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sUpdateValuesMethod:Ljava/lang/reflect/Method;

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "androidx.dynamicanimation.animation.DynamicAnimation$MassState"

    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateClass:Ljava/lang/Class;

    .line 90
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateValueField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 91
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateClass:Ljava/lang/Class;

    const-string v5, "mValue"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateValueField:Ljava/lang/reflect/Field;

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateVelocityField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    .line 95
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateClass:Ljava/lang/Class;

    const-string v5, "mVelocity"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateVelocityField:Ljava/lang/reflect/Field;

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sUpdateValuesMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 99
    sget-object p1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateValueField:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    .line 100
    sget-object p2, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sMassStateVelocityField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0

    .line 101
    new-instance p2, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    invoke-direct {p2, p1, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "SpringAnimationReflectUtils"

    const-string/jumbo p2, "updateValues error"

    .line 103
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
