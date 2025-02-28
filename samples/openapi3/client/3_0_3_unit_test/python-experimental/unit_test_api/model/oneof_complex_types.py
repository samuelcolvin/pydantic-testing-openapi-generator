# coding: utf-8

"""
    openapi 3.0.3 sample spec

    sample spec for testing openapi functionality, built from json schema tests for draft6  # noqa: E501

    The version of the OpenAPI document: 0.0.1
    Generated by: https://openapi-generator.tech
"""

import re  # noqa: F401
import sys  # noqa: F401
import typing  # noqa: F401
import functools  # noqa: F401

from frozendict import frozendict  # noqa: F401

import decimal  # noqa: F401
from datetime import date, datetime  # noqa: F401
from frozendict import frozendict  # noqa: F401

from unit_test_api import schemas  # noqa: F401


class OneofComplexTypes(
    schemas.ComposedSchema,
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """


    class MetaOapg:
        
        
        class one_of_0(
            schemas.AnyTypeSchema,
        ):
            _required_property_names = {
                "bar",
            }
            bar = schemas.IntSchema
        
            def __new__(
                cls,
                *args: typing.Union[dict, frozendict, str, date, datetime, int, float, decimal.Decimal, None, list, tuple, bytes],
                bar: bar,
                _configuration: typing.Optional[schemas.Configuration] = None,
                **kwargs: typing.Type[schemas.Schema],
            ) -> 'one_of_0':
                return super().__new__(
                    cls,
                    *args,
                    bar=bar,
                    _configuration=_configuration,
                    **kwargs,
                )
        
        
        class one_of_1(
            schemas.AnyTypeSchema,
        ):
            _required_property_names = {
                "foo",
            }
            foo = schemas.StrSchema
        
            def __new__(
                cls,
                *args: typing.Union[dict, frozendict, str, date, datetime, int, float, decimal.Decimal, None, list, tuple, bytes],
                foo: foo,
                _configuration: typing.Optional[schemas.Configuration] = None,
                **kwargs: typing.Type[schemas.Schema],
            ) -> 'one_of_1':
                return super().__new__(
                    cls,
                    *args,
                    foo=foo,
                    _configuration=_configuration,
                    **kwargs,
                )
        
        @classmethod
        @property
        @functools.cache
        def one_of(cls):
            # we need this here to make our import statements work
            # we must store _composed_schemas in here so the code is only run
            # when we invoke this method. If we kept this at the class
            # level we would get an error because the class level
            # code would be run when this module is imported, and these composed
            # classes don't exist yet because their module has not finished
            # loading
            return [
                cls.one_of_0,
                cls.one_of_1,
            ]

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict, str, date, datetime, int, float, decimal.Decimal, None, list, tuple, bytes],
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Type[schemas.Schema],
    ) -> 'OneofComplexTypes':
        return super().__new__(
            cls,
            *args,
            _configuration=_configuration,
            **kwargs,
        )
