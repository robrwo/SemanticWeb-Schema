use utf8;

package SemanticWeb::Schema::SearchAction;

# ABSTRACT: The act of searching for an object

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'SearchAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of searching for an object.

Related actions:

=over

=item *

L<SemanticWeb::Schema::FindAction>: SearchAction generally leads to a FindAction, but not necessarily.


=back



=head1 ATTRIBUTES


=head2 C<query>



A sub property of instrument. The query used on this action.


A query should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_query>

A predicate for the L</query> attribute.

=cut

has query => (
    is        => 'rw',
    predicate => '_has_query',
    json_ld   => 'query',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
