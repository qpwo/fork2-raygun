#pragma once

#include "raygun/entity.hpp"
#include "raygun/material.hpp"
#include <random>
#include <vector>

class Obstacles {
public:
    Obstacles(raygun::Entity* parent, int count = 20);
    ~Obstacles() = default;

private:
    static constexpr float MIN_SIZE = 0.5f;
    static constexpr float MAX_SIZE = 2.0f;
    static constexpr float AREA_X_MIN = -15.0f;
    static constexpr float AREA_X_MAX = 15.0f;
    static constexpr float AREA_Y_MIN = 0.5f;
    static constexpr float AREA_Y_MAX = 5.0f;
    static constexpr float AREA_Z_MIN = -15.0f;
    static constexpr float AREA_Z_MAX = 15.0f;

    void createRandomObstacle(raygun::Entity* parent, int index);
    std::shared_ptr<raygun::Material> createRandomMaterial();

    std::mt19937 m_generator;
    std::vector<std::shared_ptr<raygun::Entity>> m_obstacles;
};