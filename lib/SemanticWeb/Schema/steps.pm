use utf8;

package SemanticWeb::Schema::steps;

# ABSTRACT: A single step item (as HowToStep

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'steps';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A single step item (as HowToStep, text, document, video, etc.) or a
HowToSection (originally misnamed 'steps'; 'step' is preferred).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
