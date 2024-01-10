use utf8;

package SemanticWeb::Schema::step;

# ABSTRACT: A single step item (as HowToStep

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'step';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A single step item (as HowToStep, text, document, video, etc.) or a
HowToSection.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
