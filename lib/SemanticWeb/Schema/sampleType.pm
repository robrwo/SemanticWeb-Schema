use utf8;

package SemanticWeb::Schema::sampleType;

# ABSTRACT: What type of code sample: full (compile ready) solution

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sampleType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

What type of code sample: full (compile ready) solution, code snippet,
inline code, scripts, template.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
