import { mount } from "@vue/test-utils";
import Header from "../../src/components/Main.vue";

describe("Main.vue", () => {
    it("Main renders", () => {
        const wrapper = mount(Header);
        expect(wrapper.isEmpty()).toBe(false);
    });
});
