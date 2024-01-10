use utf8;

package SemanticWeb::Schema::diseaseSpreadStatistics;

# ABSTRACT: Statistical information about the spread of a disease

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'diseaseSpreadStatistics';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Statistical information about the spread of a disease, either as L<SemanticWeb::Schema::WebContent>, or
  described directly as a L<SemanticWeb::Schema::Dataset>, or the specific L<SemanticWeb::Schema::Observation>s in the dataset. When a L<SemanticWeb::Schema::WebContent> URL is
  provided, the page indicated might also contain more such markup.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
