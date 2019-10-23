use utf8;

package SemanticWeb::Schema::LifestyleModification;

# ABSTRACT: A process of care involving exercise

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'LifestyleModification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

A process of care involving exercise, changes to diet, fitness routines,
and other lifestyle changes aimed at improving a health condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
