use utf8;

package SemanticWeb::Schema::EndorseAction;

# ABSTRACT: An agent approves/certifies/likes/supports/sanction an object.

use Moo;

extends qw/ SemanticWeb::Schema::ReactAction /;


use MooX::JSON_LD 'EndorseAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

An agent approves/certifies/likes/supports/sanction an object.




=head1 ATTRIBUTES


=head2 C<endorsee>



A sub property of participant. The person/organization being supported.


A endorsee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_endorsee>

A predicate for the L</endorsee> attribute.

=cut

has endorsee => (
    is        => 'rw',
    predicate => '_has_endorsee',
    json_ld   => 'endorsee',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ReactAction>

=cut

1;
