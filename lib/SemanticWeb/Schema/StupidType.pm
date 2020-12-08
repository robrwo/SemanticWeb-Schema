use utf8;

package SemanticWeb::Schema::StupidType;

# ABSTRACT: A StupidType for testing.

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'StupidType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A StupidType for testing.




=head1 ATTRIBUTES


=head2 C<stupid_property>

C<stupidProperty>

This is a StupidProperty! - for testing only


A stupid_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_stupid_property>

A predicate for the L</stupid_property> attribute.

=cut

has stupid_property => (
    is        => 'rw',
    predicate => '_has_stupid_property',
    json_ld   => 'stupidProperty',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
