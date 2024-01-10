use utf8;

package SemanticWeb::Schema::syllabusSections;

# ABSTRACT: Indicates (typically several) Syllabus entities that lay out what each section of the overall course will cover.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'syllabusSections';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates (typically several) Syllabus entities that lay out what each
section of the overall course will cover.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
