use utf8;

package SemanticWeb::Schema::Pulmonary;

# ABSTRACT: A specific branch of medical science that pertains to the study of the respiratory system and its respective disease states.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Pulmonary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that pertains to the study of the
respiratory system and its respective disease states.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
