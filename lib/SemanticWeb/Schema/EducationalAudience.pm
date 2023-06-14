use utf8;

package SemanticWeb::Schema::EducationalAudience;

# ABSTRACT: An EducationalAudience.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'EducationalAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

An EducationalAudience.




=head1 ATTRIBUTES


=head2 C<educational_role>

C<educationalRole>

An educationalRole of an EducationalAudience.


A educational_role should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_educational_role>

A predicate for the L</educational_role> attribute.

=cut

has educational_role => (
    is        => 'rw',
    predicate => '_has_educational_role',
    json_ld   => 'educationalRole',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
